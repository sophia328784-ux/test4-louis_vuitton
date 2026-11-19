.class Lcom/sightcall/universal/media/ParseMediaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/ParseMediaTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sightcall/universal/media/ParseMediaTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final media:Lcom/sightcall/universal/media/Media;

.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sightcall/universal/media/UploaderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UploaderService;Lcom/sightcall/universal/media/Media;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->service:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/sightcall/universal/media/ParseMediaTask$Result;
    .locals 3

    iget-object p1, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/util/Utils;->readFileAsByteArray(Ljava/io/File;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v0}, Lcom/sightcall/universal/media/Media;->metadata()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/util/Utils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/media/Metadata;->fromJson(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sightcall/universal/media/ParseMediaTask$Result;

    iget-object p0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    invoke-direct {v1, v0, p1, p0}, Lcom/sightcall/universal/media/ParseMediaTask$Result;-><init>(Lcom/sightcall/universal/media/Metadata;Ljava/lang/String;Lcom/sightcall/universal/media/Media;)V

    return-object v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Media;->delete()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/ParseMediaTask;->doInBackground([Ljava/lang/Void;)Lcom/sightcall/universal/media/ParseMediaTask$Result;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled(Lcom/sightcall/universal/media/ParseMediaTask$Result;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/universal/media/UploaderService;->onParseCancel(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/ParseMediaTask$Result;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/sightcall/universal/media/ParseMediaTask$Result;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/ParseMediaTask;->onCancelled(Lcom/sightcall/universal/media/ParseMediaTask$Result;)V

    return-void
.end method

.method public onPostExecute(Lcom/sightcall/universal/media/ParseMediaTask$Result;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/media/UploaderService;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/media/ParseMediaTask;->media:Lcom/sightcall/universal/media/Media;

    if-nez p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/media/UploaderService;->onParseFail(Lcom/sightcall/universal/media/Media;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/sightcall/universal/media/UploaderService;->onParseSuccess(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/ParseMediaTask$Result;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/sightcall/universal/media/ParseMediaTask$Result;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/ParseMediaTask;->onPostExecute(Lcom/sightcall/universal/media/ParseMediaTask$Result;)V

    return-void
.end method
