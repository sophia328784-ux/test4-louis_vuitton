.class public abstract Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/airbnb/lottie/AsyncUpdates;

.field public static final b:Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sput-object v0, Lcom/airbnb/lottie/L;->a:Lcom/airbnb/lottie/AsyncUpdates;

    new-instance v0, Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;

    invoke-direct {v0}, Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/L;->b:Lcom/airbnb/lottie/configurations/reducemotion/SystemReducedMotionOption;

    return-void
.end method
