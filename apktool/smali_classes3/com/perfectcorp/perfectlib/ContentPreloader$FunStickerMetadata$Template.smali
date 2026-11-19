.class final Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation


# instance fields
.field final downloadURL:Ljava/lang/String;

.field final guid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ContentPreloader$FunStickerMetadata$Template;->downloadURL:Ljava/lang/String;

    return-void
.end method
