.class public final synthetic Lw71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/batch/android/m0/a;

.field public final synthetic c:Lcom/batch/android/g0/c$g;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/batch/android/f0/a;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw71;->b:Lcom/batch/android/m0/a;

    iput-object p2, p0, Lw71;->c:Lcom/batch/android/g0/c$g;

    iput-object p3, p0, Lw71;->d:Ljava/lang/String;

    iput-object p4, p0, Lw71;->e:Lcom/batch/android/f0/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lw71;->d:Ljava/lang/String;

    iget-object v1, p0, Lw71;->e:Lcom/batch/android/f0/a;

    iget-object v2, p0, Lw71;->b:Lcom/batch/android/m0/a;

    iget-object p0, p0, Lw71;->c:Lcom/batch/android/g0/c$g;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/batch/android/m0/a;->c(Lcom/batch/android/m0/a;Lcom/batch/android/g0/c$g;Ljava/lang/String;Lcom/batch/android/f0/a;Landroid/view/View;)V

    return-void
.end method
