.class final Lcom/perfectcorp/perfectlib/makeupcam/video/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/opengl/EGLContext;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;Landroid/opengl/EGLContext;II)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->a:Landroid/opengl/EGLContext;

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->b:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->a:Landroid/opengl/EGLContext;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->b:I

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/c;->c:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;->a(Landroid/opengl/EGLContext;IIZ)V

    return-void
.end method
