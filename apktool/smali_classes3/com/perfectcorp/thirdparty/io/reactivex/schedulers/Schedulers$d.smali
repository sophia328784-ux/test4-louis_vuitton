.class abstract Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$d;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;

    return-void
.end method
