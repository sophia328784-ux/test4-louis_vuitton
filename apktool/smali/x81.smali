.class public final synthetic Lx81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e/c0$b;


# instance fields
.field public final synthetic a:Lcom/batch/android/b/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/b/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx81;->a:Lcom/batch/android/b/f;

    iput-object p2, p0, Lx81;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lx81;->a:Lcom/batch/android/b/f;

    iget-object p0, p0, Lx81;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/batch/android/b/f;->a(Lcom/batch/android/b/f;Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method
