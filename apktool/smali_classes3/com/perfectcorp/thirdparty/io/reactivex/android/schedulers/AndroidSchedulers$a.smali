.class abstract Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/b;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void
.end method
