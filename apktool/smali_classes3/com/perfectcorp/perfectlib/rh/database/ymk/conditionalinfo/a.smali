.class public Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;,
        Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->c:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->b:Ljava/lang/String;

    const-class v2, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->c:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a;->c:Lcom/perfectcorp/perfectlib/rh/database/ymk/conditionalinfo/a$b;
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
