.class public Lcom/google/android/filament/EntityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/EntityManager$Holder;
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->nGetEntityManager()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/google/android/filament/EntityManager;->nGetEntityManager()J

    .line 12
    iput-wide p1, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-void
.end method

.method public static c()Lcom/google/android/filament/EntityManager;
    .locals 1

    sget-object v0, Lcom/google/android/filament/EntityManager$Holder;->a:Lcom/google/android/filament/EntityManager;

    return-object v0
.end method

.method private static native nCreate(J)I
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nGetEntityManager()J
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/EntityManager;->nCreate(J)I

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/EntityManager;->nDestroy(JI)V

    return-void
.end method

.method public getNativeObject()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/EntityManager;->a:J

    return-wide v0
.end method
