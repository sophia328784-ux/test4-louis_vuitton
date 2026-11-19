.class public final enum Lcom/batch/android/BatchMessagingView$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchMessagingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/batch/android/BatchMessagingView$Kind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Fragment:Lcom/batch/android/BatchMessagingView$Kind;

.field public static final enum View:Lcom/batch/android/BatchMessagingView$Kind;

.field private static final synthetic b:[Lcom/batch/android/BatchMessagingView$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/batch/android/BatchMessagingView$Kind;

    const-string v1, "Fragment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingView$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingView$Kind;->Fragment:Lcom/batch/android/BatchMessagingView$Kind;

    new-instance v0, Lcom/batch/android/BatchMessagingView$Kind;

    const-string v1, "View"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/batch/android/BatchMessagingView$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batch/android/BatchMessagingView$Kind;->View:Lcom/batch/android/BatchMessagingView$Kind;

    invoke-static {}, Lcom/batch/android/BatchMessagingView$Kind;->a()[Lcom/batch/android/BatchMessagingView$Kind;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchMessagingView$Kind;->b:[Lcom/batch/android/BatchMessagingView$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/batch/android/BatchMessagingView$Kind;
    .locals 2

    sget-object v0, Lcom/batch/android/BatchMessagingView$Kind;->Fragment:Lcom/batch/android/BatchMessagingView$Kind;

    sget-object v1, Lcom/batch/android/BatchMessagingView$Kind;->View:Lcom/batch/android/BatchMessagingView$Kind;

    filled-new-array {v0, v1}, [Lcom/batch/android/BatchMessagingView$Kind;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/BatchMessagingView$Kind;
    .locals 1

    const-class v0, Lcom/batch/android/BatchMessagingView$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchMessagingView$Kind;

    return-object p0
.end method

.method public static values()[Lcom/batch/android/BatchMessagingView$Kind;
    .locals 1

    sget-object v0, Lcom/batch/android/BatchMessagingView$Kind;->b:[Lcom/batch/android/BatchMessagingView$Kind;

    invoke-virtual {v0}, [Lcom/batch/android/BatchMessagingView$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/BatchMessagingView$Kind;

    return-object v0
.end method
