.class final Lcom/perfectcorp/perfectlib/ph/template/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final palette:Lcom/perfectcorp/perfectlib/ph/template/idc/d;

.field final pattern:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

.field final shape:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

.field final texture:Lcom/perfectcorp/perfectlib/ph/template/idc/g;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$a;->pattern:Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$a;->palette:Lcom/perfectcorp/perfectlib/ph/template/idc/d;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/g;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$a;->texture:Lcom/perfectcorp/perfectlib/ph/template/idc/g;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/idc/f;->a:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$a;->shape:Lcom/perfectcorp/perfectlib/ph/template/idc/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ph/template/b$a;-><init>()V

    return-void
.end method
