.class public final synthetic Landroidx/media3/common/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/WakeLockManager;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WakeLockManager;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/e;->b:Landroidx/media3/common/util/WakeLockManager;

    iput-boolean p2, p0, Landroidx/media3/common/util/e;->c:Z

    iput-boolean p3, p0, Landroidx/media3/common/util/e;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/util/e;->d:Z

    iget-object v1, p0, Landroidx/media3/common/util/e;->b:Landroidx/media3/common/util/WakeLockManager;

    iget-object v1, v1, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    iget-boolean p0, p0, Landroidx/media3/common/util/e;->c:Z

    invoke-static {v1, p0, v0}, Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;->a(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;ZZ)V

    return-void
.end method
