.class Lcom/perfectcorp/perfectlib/ph/template/e$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/e$g;->a:Lcom/perfectcorp/perfectlib/makeupcam/template/LocalizedString;

    return-void
.end method
