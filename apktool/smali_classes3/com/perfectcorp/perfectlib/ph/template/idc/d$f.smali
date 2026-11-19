.class public Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;
    }
.end annotation


# instance fields
.field public final contrast:Ljava/lang/String;

.field public final diffuse:Ljava/lang/String;

.field public final finishType:Ljava/lang/String;

.field public final light:Ljava/lang/String;

.field public final reflection:Ljava/lang/String;

.field public final roughness:Ljava/lang/String;

.field public final transparency:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->light:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->diffuse:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->finishType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->light:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->diffuse:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->finishType:Ljava/lang/String;

    return-void
.end method
