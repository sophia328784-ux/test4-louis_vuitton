.class public final Lcom/perfectcorp/perfectlib/ph/template/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:F

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/template/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->d:Ljava/util/List;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->f:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->g:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->g:F

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->h:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->n:Ljava/lang/String;

    iget p1, p1, Lcom/perfectcorp/perfectlib/ph/template/m;->o:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->o:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/template/m;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/m;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->d:Ljava/util/List;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->n:Ljava/lang/String;

    iget v15, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->o:I

    move-object v2, v1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->a:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->b:Ljava/lang/String;

    move-object v5, v3

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->c:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->e:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->f:Ljava/lang/String;

    move-object v8, v7

    iget v7, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->g:F

    move-object v9, v8

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->h:Z

    move-object v10, v9

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->i:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->j:Lcom/perfectcorp/perfectlib/ph/template/m$b;

    move-object v12, v11

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->k:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->l:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/m$a;->m:Ljava/lang/String;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/perfectcorp/perfectlib/ph/template/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Lcom/perfectcorp/perfectlib/ph/template/m$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
