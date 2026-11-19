.class public abstract Lcom/vuitton/android/presentation/screen/story/StoryDestinationsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/story/StoryDestinations$ToStoryPage;->a:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {v0, p1, p0, v1}, Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x1000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
