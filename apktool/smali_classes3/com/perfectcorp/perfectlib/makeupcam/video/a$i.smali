.class final Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

.field public final b:Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;

.field public final c:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Landroid/os/Looper;Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a;Landroid/os/Looper;Lcom/perfectcorp/perfectlib/makeupcam/video/a$c;Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$i;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a$j;

    return-void
.end method
