.class public final enum Lcom/perfectcorp/perfectlib/FitzpatrickScale;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/FitzpatrickScale;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TYPE1:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum TYPE2:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum TYPE3:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum TYPE4:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum TYPE5:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum TYPE6:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field public static final enum UNKNOWN:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/FitzpatrickScale;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->UNKNOWN:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v1, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v2, "TYPE1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE1:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v2, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v3, "TYPE2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE2:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v3, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v4, "TYPE3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE3:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v4, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v5, "TYPE4"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE4:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v5, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v6, "TYPE5"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE5:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    new-instance v6, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    const-string v7, "TYPE6"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE6:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    filled-new-array/range {v0 .. v6}, [Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->a:[Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-void
.end method

.method public static fromInt(I)Lcom/perfectcorp/perfectlib/FitzpatrickScale;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->UNKNOWN:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE6:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE5:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE4:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE3:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE2:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->TYPE1:Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/FitzpatrickScale;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/FitzpatrickScale;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/FitzpatrickScale;->a:[Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/FitzpatrickScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/FitzpatrickScale;

    return-object v0
.end method
