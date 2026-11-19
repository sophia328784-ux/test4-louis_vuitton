.class public final Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/renderer/FrameCallback$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB2\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;",
        "Landroid/view/Choreographer$FrameCallback;",
        "Lcom/vuitton/android/presentation/ar/arcore/ArCore;",
        "arCore",
        "Lkotlin/Function1;",
        "Lcom/google/ar/core/Frame;",
        "Lkotlin/ParameterName;",
        "name",
        "frame",
        "",
        "doFrame",
        "<init>",
        "(Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lkotlin/jvm/functions/Function1;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "FrameCallback"

    sput-object v0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/ar/arcore/ArCore;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/presentation/ar/arcore/ArCore;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/ar/core/Frame;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->d:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->d:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    invoke-virtual {v1}, Lcom/google/ar/core/Session;->update()Lcom/google/ar/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/google/ar/core/Frame;->getTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/ar/core/Frame;->getTimestamp()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->v:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/ar/core/Frame;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->f(Lcom/google/ar/core/Frame;Lcom/vuitton/android/presentation/ar/filament/Filament;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v0, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->v:J

    cmp-long p0, v0, v5

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->l:Lcom/google/android/filament/android/UiHelper;

    iget-boolean p0, p0, Lcom/google/android/filament/android/UiHelper;->c:Z

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->d:Lcom/google/android/filament/Renderer;

    iget-object v0, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->j:Lcom/google/android/filament/SwapChain;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/filament/Renderer;->a(Lcom/google/android/filament/SwapChain;J)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->d:Lcom/google/android/filament/Renderer;

    iget-object p1, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->g:Lcom/google/android/filament/View;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/Renderer;->d(Lcom/google/android/filament/View;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->d:Lcom/google/android/filament/Renderer;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->b()V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "FrameCallbackException "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object p2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    sget-object v0, Lcom/vuitton/android/presentation/ar/renderer/FrameCallback;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, p0, p1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
