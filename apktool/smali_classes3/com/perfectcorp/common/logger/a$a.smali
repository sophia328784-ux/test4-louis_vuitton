.class final enum Lcom/perfectcorp/common/logger/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/logger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/common/logger/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/perfectcorp/common/logger/a$a;

.field private static enum b:Lcom/perfectcorp/common/logger/a$a;

.field private static enum c:Lcom/perfectcorp/common/logger/a$a;

.field private static enum d:Lcom/perfectcorp/common/logger/a$a;

.field private static enum e:Lcom/perfectcorp/common/logger/a$a;

.field private static enum f:Lcom/perfectcorp/common/logger/a$a;

.field private static enum g:Lcom/perfectcorp/common/logger/a$a;


# instance fields
.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "S"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->b:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "V"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->c:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "D"

    const/4 v4, -0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->d:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "I"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->e:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "W"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->f:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "E"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->a:Lcom/perfectcorp/common/logger/a$a;

    new-instance v0, Lcom/perfectcorp/common/logger/a$a;

    const-string v1, "N"

    const/16 v3, -0x63

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/perfectcorp/common/logger/a$a;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/perfectcorp/common/logger/a$a;->g:Lcom/perfectcorp/common/logger/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/perfectcorp/common/logger/a$a;->h:I

    iput p4, p0, Lcom/perfectcorp/common/logger/a$a;->i:I

    return-void
.end method

.method public static synthetic a(Lcom/perfectcorp/common/logger/a$a;)I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/common/logger/a$a;->i:I

    return p0
.end method

.method public static b(I)Lcom/perfectcorp/common/logger/a$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->c:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->a:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->f:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->e:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->d:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/perfectcorp/common/logger/a$a;->c:Lcom/perfectcorp/common/logger/a$a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
