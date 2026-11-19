.class public final Lcom/google/android/gms/internal/gtm/zzko;
.super Lcom/google/android/gms/internal/gtm/zzkk;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/internal/gtm/zzko;

.field public static final f:Lcom/google/android/gms/internal/gtm/zzko;

.field public static final g:Lcom/google/android/gms/internal/gtm/zzko;

.field public static final h:Lcom/google/android/gms/internal/gtm/zzko;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/gtm/zzkk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzko;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzko;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzko;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzko;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzko;->f:Lcom/google/android/gms/internal/gtm/zzko;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzko;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzko;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzko;->g:Lcom/google/android/gms/internal/gtm/zzko;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzko;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzko;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzko;->h:Lcom/google/android/gms/internal/gtm/zzko;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzkk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzkk;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzko;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzko;->d:Lcom/google/android/gms/internal/gtm/zzkk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzkk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzko;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzko;->c:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzko;->d:Lcom/google/android/gms/internal/gtm/zzkk;

    return-void
.end method


# virtual methods
.method public final synthetic c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzko;->d:Lcom/google/android/gms/internal/gtm/zzkk;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzko;->b:Ljava/lang/String;

    return-object p0
.end method
