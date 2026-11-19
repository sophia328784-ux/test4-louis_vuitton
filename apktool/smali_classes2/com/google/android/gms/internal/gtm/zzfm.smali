.class public final Lcom/google/android/gms/internal/gtm/zzfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge p0, v0, :cond_1

    aget-object v1, p2, p0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzkr;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Ljava/util/List;)V

    return-object p0
.end method
