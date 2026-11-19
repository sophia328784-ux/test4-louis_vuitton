.class public final synthetic Lcom/sightcall/universal/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/media/UploaderService$OverwriteMetadataTask$Callback;


# instance fields
.field public final synthetic a:Lcom/sightcall/universal/media/UploaderService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/universal/media/UploaderService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/b;->a:Lcom/sightcall/universal/media/UploaderService$1;

    return-void
.end method


# virtual methods
.method public final postSave(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/b;->a:Lcom/sightcall/universal/media/UploaderService$1;

    invoke-static {p0, p1}, Lcom/sightcall/universal/media/UploaderService$1;->b(Lcom/sightcall/universal/media/UploaderService$1;Ljava/util/List;)V

    return-void
.end method
