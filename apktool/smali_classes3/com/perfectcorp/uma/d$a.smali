.class abstract enum Lcom/perfectcorp/uma/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/uma/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAILY:Lcom/perfectcorp/uma/d$a;

.field public static final enum MONTHLY:Lcom/perfectcorp/uma/d$a;

.field public static final enum QUARTERLY:Lcom/perfectcorp/uma/d$a;

.field public static final enum WEEKLY:Lcom/perfectcorp/uma/d$a;

.field private static final synthetic a:[Lcom/perfectcorp/uma/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/uma/e;

    invoke-direct {v0}, Lcom/perfectcorp/uma/e;-><init>()V

    sput-object v0, Lcom/perfectcorp/uma/d$a;->DAILY:Lcom/perfectcorp/uma/d$a;

    new-instance v1, Lcom/perfectcorp/uma/f;

    invoke-direct {v1}, Lcom/perfectcorp/uma/f;-><init>()V

    sput-object v1, Lcom/perfectcorp/uma/d$a;->WEEKLY:Lcom/perfectcorp/uma/d$a;

    new-instance v2, Lcom/perfectcorp/uma/g;

    invoke-direct {v2}, Lcom/perfectcorp/uma/g;-><init>()V

    sput-object v2, Lcom/perfectcorp/uma/d$a;->MONTHLY:Lcom/perfectcorp/uma/d$a;

    new-instance v3, Lcom/perfectcorp/uma/h;

    invoke-direct {v3}, Lcom/perfectcorp/uma/h;-><init>()V

    sput-object v3, Lcom/perfectcorp/uma/d$a;->QUARTERLY:Lcom/perfectcorp/uma/d$a;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/perfectcorp/uma/d$a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/perfectcorp/uma/d$a;->a:[Lcom/perfectcorp/uma/d$a;

    return-void
.end method

.method public static values()[Lcom/perfectcorp/uma/d$a;
    .locals 1

    sget-object v0, Lcom/perfectcorp/uma/d$a;->a:[Lcom/perfectcorp/uma/d$a;

    invoke-virtual {v0}, [Lcom/perfectcorp/uma/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/uma/d$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/Calendar;)V
.end method
