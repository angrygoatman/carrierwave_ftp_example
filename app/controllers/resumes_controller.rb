class ResumesController < ApplicationController
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end
   
   def create
      @resume = Resume.new(resume_params)
      
      #@article = Article.find(params[:id])
      #title_field = @resume.name
      #text_field = @resume.attachment
      #text_field = @tempfile
      #puts title_field
      #puts text_field
      #FTP upload
      #Example::Main.new(ARGV).create_file(title_field, text_field)
      #@test = "test"
      # edit the forms next
      # have everything in 1 place
      
      
      #if @resume.save
         redirect_to resumes_path, notice: "Successfully uploaded."
      #else
      #   render "new"
      #end
      
   end
   def show

    end
   
   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "Successfully deleted."
   end
   
   private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
   
end
