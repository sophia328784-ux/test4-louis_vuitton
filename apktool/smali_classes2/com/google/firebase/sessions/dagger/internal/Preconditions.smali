.class public abstract Lcom/google/firebase/sessions/dagger/internal/Preconditions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " must be set"

    invoke-static {p0, p1}, Lno0;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
