.class Lcom/sightcall/universal/media/UniversalMedia$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/media/UniversalMedia;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/media/UniversalMedia;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/media/UniversalMedia;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/UniversalMedia$2;->this$0:Lcom/sightcall/universal/media/UniversalMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/UniversalMedia$2;->this$0:Lcom/sightcall/universal/media/UniversalMedia;

    invoke-static {p0}, Lcom/sightcall/universal/media/UniversalMedia;->a(Lcom/sightcall/universal/media/UniversalMedia;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->getRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/media/MediaStorage;->deleteRecursively(Ljava/io/File;)Z

    return-void
.end method
