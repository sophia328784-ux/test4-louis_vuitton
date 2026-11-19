.class public final Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->a:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->b:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->c:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->c:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->d:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->d:I

    iget p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->e:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;->e:I

    return-void
.end method
