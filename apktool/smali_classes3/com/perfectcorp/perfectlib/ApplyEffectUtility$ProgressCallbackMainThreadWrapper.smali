.class final Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ApplyEffectUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressCallbackMainThreadWrapper"
.end annotation


# static fields
.field public static final b:Li8;


# instance fields
.field public final a:Lcom/perfectcorp/common/network/ProgressCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->b:Li8;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/common/network/ProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility$ProgressCallbackMainThreadWrapper;->a:Lcom/perfectcorp/common/network/ProgressCallback;

    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/perfectcorp/perfectlib/p;-><init>(Ljava/lang/Object;DI)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
