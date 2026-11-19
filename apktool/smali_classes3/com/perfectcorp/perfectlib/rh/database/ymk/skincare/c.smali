.class public Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;,
        Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$a;->c:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->c:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->b:Ljava/lang/String;

    const-class v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
