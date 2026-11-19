.class public final Lcom/batch/android/m0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/m0/a;->a(Lcom/batch/android/g0/c$g;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/r0/d;

.field final synthetic b:Lcom/batch/android/m0/a;

.field final synthetic c:Lcom/batch/android/g0/c$g;


# direct methods
.method public constructor <init>(Lcom/batch/android/r0/d;Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/m0/a$d;->a:Lcom/batch/android/r0/d;

    iput-object p2, p0, Lcom/batch/android/m0/a$d;->b:Lcom/batch/android/m0/a;

    iput-object p3, p0, Lcom/batch/android/m0/a$d;->c:Lcom/batch/android/g0/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/m0/a$d;->a:Lcom/batch/android/r0/d;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/batch/android/m0/a$d;->b:Lcom/batch/android/m0/a;

    invoke-static {v0}, Lcom/batch/android/m0/a;->a(Lcom/batch/android/m0/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/m0/a$d;->c:Lcom/batch/android/g0/c$g;

    invoke-virtual {v1}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z/a$d;

    iget-object v1, p0, Lcom/batch/android/m0/a$d;->a:Lcom/batch/android/r0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/batch/android/r0/d;->a()V

    iget-object v1, p0, Lcom/batch/android/m0/a$d;->a:Lcom/batch/android/r0/d;

    iget-object p0, p0, Lcom/batch/android/m0/a$d;->c:Lcom/batch/android/g0/c$g;

    invoke-virtual {v1, p0, v0}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Lcom/batch/android/z/a$d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/batch/android/m0/a$d;->c:Lcom/batch/android/g0/c$g;

    iget-object v2, p0, Lcom/batch/android/m0/a$d;->b:Lcom/batch/android/m0/a;

    invoke-static {v2}, Lcom/batch/android/m0/a;->b(Lcom/batch/android/m0/a;)Lcom/batch/android/g0/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/g0/a;->k()Ljava/util/Map;

    move-result-object v2

    iget-object p0, p0, Lcom/batch/android/m0/a$d;->c:Lcom/batch/android/g0/c$g;

    invoke-virtual {p0}, Lcom/batch/android/g0/c$g;->r()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/batch/android/r0/d;->a(Lcom/batch/android/g0/c$g;Ljava/lang/String;)V

    return-void
.end method
