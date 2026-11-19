.class public final Lcom/perfectcorp/perfectlib/ph/template/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;

.field public final f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public final i:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->e:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->g:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->h:Ljava/util/List;

    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/template/c;->i:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->i:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/template/c;
    .locals 10

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/c;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->e:Ljava/util/List;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->g:Ljava/util/List;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->h:Ljava/util/List;

    iget v9, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->i:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/ph/template/c$a;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/perfectcorp/perfectlib/ph/template/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-object v0
.end method
