.class Lcom/google/android/material/internal/CheckableGroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/CheckableGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/CheckableGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup$1;->a:Lcom/google/android/material/internal/CheckableGroup;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->a:Lcom/google/android/material/internal/CheckableGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->b(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/material/internal/CheckableGroup;->e:Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup;->e(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->c:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz p1, :cond_1

    new-instance p2, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/google/android/material/internal/CheckableGroup;->b:Ljava/util/HashSet;

    invoke-direct {p2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->a()V

    :cond_1
    return-void
.end method
