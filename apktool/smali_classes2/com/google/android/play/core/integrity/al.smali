.class public final Lcom/google/android/play/core/integrity/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/integrity/internal/ak;


# instance fields
.field public final a:Lcom/google/android/play/integrity/internal/an;

.field public final b:Lcom/google/android/play/integrity/internal/an;

.field public final c:Lcom/google/android/play/integrity/internal/an;

.field public final d:Lcom/google/android/play/integrity/internal/an;


# direct methods
.method public constructor <init>(Lcom/google/android/play/integrity/internal/an;Lcom/google/android/play/integrity/internal/an;Lcom/google/android/play/integrity/internal/an;Lcom/google/android/play/integrity/internal/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/al;->a:Lcom/google/android/play/integrity/internal/an;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/al;->b:Lcom/google/android/play/integrity/internal/an;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/al;->c:Lcom/google/android/play/integrity/internal/an;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/al;->d:Lcom/google/android/play/integrity/internal/an;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/integrity/al;->a:Lcom/google/android/play/integrity/internal/an;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/an;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/al;->b:Lcom/google/android/play/integrity/internal/an;

    invoke-interface {v1}, Lcom/google/android/play/integrity/internal/an;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/integrity/internal/s;

    iget-object p0, p0, Lcom/google/android/play/core/integrity/al;->c:Lcom/google/android/play/integrity/internal/an;

    check-cast p0, Lcom/google/android/play/core/integrity/au;

    iget-object p0, p0, Lcom/google/android/play/core/integrity/au;->a:Lcom/google/android/play/integrity/internal/an;

    new-instance p0, Lcom/google/android/play/core/integrity/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/play/core/integrity/aj;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/play/core/integrity/aj;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/s;Lcom/google/android/play/core/integrity/i;)V

    return-object v2
.end method
