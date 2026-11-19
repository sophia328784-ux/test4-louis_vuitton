.class public final Lcom/google/android/gms/internal/gtm/zzit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzit;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzit;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gtm/zzit;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzit;->e:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzit;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzit;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "_"

    invoke-static {v0, v1, p0}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
