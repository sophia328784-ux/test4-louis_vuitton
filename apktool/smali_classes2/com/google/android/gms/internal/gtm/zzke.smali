.class public final Lcom/google/android/gms/internal/gtm/zzke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzke;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzke;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzke;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/gtm/zzkg;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzke;->a:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzke;->b:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzkg;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzke;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/gms/internal/gtm/zzkg;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object v2
.end method
