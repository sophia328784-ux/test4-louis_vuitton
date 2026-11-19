.class final Lcom/google/ar/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ar/core/h;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/l;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 0

    iget-object p0, p0, Lcom/google/ar/core/i;->a:Lcom/google/ar/core/l;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ar/core/l;->g:Lcom/google/ar/core/ArCoreApk$Availability;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/l;->h:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
