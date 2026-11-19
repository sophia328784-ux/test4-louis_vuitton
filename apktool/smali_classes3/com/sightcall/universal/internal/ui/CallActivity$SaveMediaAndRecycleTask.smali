.class Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;
.super Lcom/sightcall/universal/media/SaveMediaTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveMediaAndRecycleTask"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/media/SaveMediaTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/sightcall/universal/media/Media;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/media/SaveMediaTask;->onPostExecute(Lcom/sightcall/universal/media/Media;)V

    iget-object p0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/sightcall/universal/media/Media;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity$SaveMediaAndRecycleTask;->onPostExecute(Lcom/sightcall/universal/media/Media;)V

    return-void
.end method
