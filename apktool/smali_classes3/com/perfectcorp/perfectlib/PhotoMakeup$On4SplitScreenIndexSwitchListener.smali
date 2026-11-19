.class interface abstract Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PhotoMakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "On4SplitScreenIndexSwitchListener"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->NOP:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    return-void
.end method


# virtual methods
.method public abstract onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/perfectcorp/thirdparty/io/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
