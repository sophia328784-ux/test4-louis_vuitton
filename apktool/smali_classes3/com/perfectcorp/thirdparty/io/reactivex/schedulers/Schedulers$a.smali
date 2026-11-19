.class abstract Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$a;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;

    return-void
.end method
