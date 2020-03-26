package foo.bar;

public class Pigeon {




    private String author;
    private String message;
    public Pigeon(){
    }
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    @Override
    public String toString() {
        return "Pigeon{" +
                "author='" + author + '\'' +
                ", message='" + message + '\'' +
                '}';

    }

}