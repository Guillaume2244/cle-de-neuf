class BooksController < ApplicationController

  before_action :find_book, only: [:edit, :destroy, :update, :show]

  def index
    @books = policy_scope(Book)
    @checkups = Checkup.all
  end

  def show
    @checkups = @book.checkups
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    authorize @book
    @book.token = generate_token

    date = @book.circulation_date
    date_today = Date.today
    number_of_days = (date_today - date).to_i
    km_today = @book.initial_km.to_i
    @average_km = km_today / number_of_days.to_f
    @book.average_km = @average_km
    @book.template = Template.first
    @book.save
    pneus

    redirect_to book_path(@book)
  end


  def destroy
    @book.destroy
    authorize @book
    redirect_to books_path
  end

  private


  def find_book
    @book = Book.find(params[:id])
    authorize @book
  end

  def generate_token
    token = SecureRandom.urlsafe_base64(nil, false).first(5)
  end

  def book_params
    params.require(:book).permit(:registration_plate, :initial_km, :circulation_date, :name)
  end

  def new_checkup_not_done
    @c = Checkup.new
    @c.book = @book
    @c.done = false
  end

  def pneus
     a = @book.template.pneus_date.to_i

    if @book.initial_km.to_i + @book.average_km.to_i * 365 > @book.template.pneus_km.to_i ||
      (@book.circulation_date + a * 365 - Date.today).to_i < 0
      n = (@book.initial_km.to_i / @book.template.pneus_km.to_i).round
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Pneus").first
      @c.checkup_item.descriptions.where(numero: i).first
      @c.save
     end
    end
  end

  def freinage
     b = @book.template.freinage.to_i

     if (@book.circulation_date + b * 365 - Date.today).to_i < 0
      n = (Date.today - @book.circulation_date).to_i / 365 / @book.template.freinage.to_i
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Freinage", numero: i).first
      @c.save
      end
    end
  end

  def revision
    c = @book.template.revision_date.to_i
    if @book.initial_km.to_i + @book.average_km.to_i * 365 > @book.template.revision_km.to_i ||
      (@book.circulation_date + c * 365 - Date.today).to_i < 0
      n = (@book.initial_km.to_i / @book.template.revision_km.to_i).round
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Revision", numero: i).first
      @c.save
      end
    end
  end

  def balai
     d = @book.template.balai.to_i
    if (@book.circulation_date + d * 365 - Date.today).to_i < 0
      n = (Date.today - @book.circulation_date).to_i / 365 / @book.template.balai.to_i
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Balai essui glace", numero: i).first
      @c.save
      end
    end
  end

  def echappement
     e = @book.template.echappement.to_i
    if (@book.circulation_date + e * 365 - Date.today).to_i < 0
      n = (Date.today - @book.circulation_date).to_i / 365 / @book.template.echappement.to_i
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Echappement", numero: i).first
      @c.save
      end
    end
  end

  def amortisseurs
    f = @book.template.amortisseurs_date.to_i
   if @book.initial_km.to_i + @book.average_km.to_i * 365 > @book.template.amortisseurs_km.to_i ||
      (@book.circulation_date + f * 365 - Date.today).to_i < 0
      n = (@book.initial_km.to_i / @book.template.amortisseurs_km.to_i).round
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Amortisseurs", numero: i).first
      @c.save
    end
    end
  end

  def bougies
    if @book.initial_km.to_i + @book.average_km.to_i * 365 > @book.template.bougies_km.to_i
      n = (@book.initial_km.to_i / @book.template.amortisseurs_km.to_i).round
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Bougies", numero: i).first
      @c.save
      end
    end
  end

  def climatisation
     g = @book.template.climatisation.to_i
    if (@book.circulation_date + g * 365 - Date.today).to_i < 0
      n = (Date.today - @book.circulation_date).to_i / 365 / @book.template.climatisation.to_i
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Climatisation", numero: i).first
      @c.save
      end
    end
  end

  def controle_technique_f
     h = @book.template.controle_technique_first.to_i
    if (@book.circulation_date + h * 365 - Date.today).to_i < 0
      n = (Date.today - @book.circulation_date).to_i / 365 / @book.template.controle_technique_first.to_i
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Controle Technique", numero: i).first
      @c.save
      end
    end
  end

  def vidange
    j = @book.template.vidange_date.to_i
    if @book.initial_km.to_i + @book.average_km.to_i * 365 > @book.template.vidange_km.to_i ||
      (@book.circulation_date + j * 365 - Date.today).to_i < 0
      n = (@book.initial_km.to_i / @book.template.vidange_km.to_i).round
      (1..n).each do |i|
      new_checkup_not_done
      @c.checkup_item = CheckupItem.where(name:"Vidange", numero: i).first
      @c.save
      end
    end
  end

end
