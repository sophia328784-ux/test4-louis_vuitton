.class final Lcom/google/android/gms/internal/gtm/zzkp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/gtm/zzkr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzkr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzkp;->c:Lcom/google/android/gms/internal/gtm/zzkr;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/gtm/zzkm;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzkp;->c:Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzkm;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v3

    :cond_2
    invoke-static {}, Lb21;->x()V

    return-object v3
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzkp;->b:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzkp;->c:Lcom/google/android/gms/internal/gtm/zzkr;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzkr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzkp;->a()Lcom/google/android/gms/internal/gtm/zzkm;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
