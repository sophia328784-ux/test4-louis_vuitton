.class final Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->b:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$d;->c:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    return-void
.end method
