.class Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask;
.super Lcom/sightcall/universal/media/SaveMetadataListTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverwriteMetadataTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Metadata;",
            ">;",
            "Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/media/SaveMetadataListTask;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask;->callback:Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/media/Metadata;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/media/SaveMetadataListTask;->onPostExecute(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask;->callback:Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/ui/CallActivity$OverwriteMetadataTask$Callback;->postSave(Ljava/util/List;)V

    return-void
.end method
