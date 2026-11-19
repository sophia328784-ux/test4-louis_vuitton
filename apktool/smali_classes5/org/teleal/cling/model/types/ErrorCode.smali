.class public final enum Lorg/teleal/cling/model/types/ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/teleal/cling/model/types/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ACTION_NOT_AUTHORIZED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_TOO_LONG:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum HUMAN_INTERVENTION_REQUIRED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_CONTROL_URL:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_SEQUENCE:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum NOT_ENCRYPTED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum NO_SUCH_SESSION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum OPTIONAL_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum OUT_OF_MEMORY:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_FAILURE:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_MISSING:Lorg/teleal/cling/model/types/ErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x191

    const-string v2, "No action by that name at this service"

    const-string v3, "INVALID_ACTION"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v2, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x192

    const-string v3, "Not enough IN args, too many IN args, no IN arg by that name, one or more IN args are of the wrong data type"

    const-string v4, "INVALID_ARGS"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v0, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x1f5

    const-string v4, "Current state of service prevents invoking that action"

    const-string v5, "ACTION_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v0, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v4, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x258

    const-string v5, "The argument value is invalid"

    const-string v6, "ARGUMENT_VALUE_INVALID"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v0, v5}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v5, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x259

    const-string v6, "An argument value is less than the minimum or more than the maximum value of the allowedValueRange, or is not in the allowedValueList"

    const-string v7, "ARGUMENT_VALUE_OUT_OF_RANGE"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v0, v6}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v6, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25a

    const-string v7, "The requested action is optional and is not implemented by the device"

    const-string v8, "OPTIONAL_ACTION"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v0, v7}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/teleal/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v7, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25b

    const-string v8, "The device does not have sufficient memory available to complete the action"

    const-string v9, "OUT_OF_MEMORY"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v0, v8}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/teleal/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v8, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25c

    const-string v9, "The device has encountered an error condition which it cannot resolve itself"

    const-string v10, "HUMAN_INTERVENTION_REQUIRED"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v0, v9}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/teleal/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v9, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25d

    const-string v10, "A string argument is too long for the device to handle properly"

    const-string v11, "ARGUMENT_TOO_LONG"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v0, v10}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v10, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25e

    const-string v11, "The action requested requires authorization and the sender was not authorized"

    const-string v12, "ACTION_NOT_AUTHORIZED"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v0, v11}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v11, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x25f

    const-string v12, "The sender\'s signature failed to verify"

    const-string v13, "SIGNATURE_FAILURE"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v0, v12}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v12, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x260

    const-string v13, "The action requested requires a digital signature and there was none provided"

    const-string v14, "SIGNATURE_MISSING"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v0, v13}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v13, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x261

    const-string v14, "This action requires confidentiality but the action was not delivered encrypted"

    const-string v15, "NOT_ENCRYPTED"

    move-object/from16 v16, v1

    const/16 v1, 0xc

    invoke-direct {v13, v15, v1, v0, v14}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/teleal/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v14, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x262

    const-string v1, "The sequence provided was not valid"

    const-string v15, "INVALID_SEQUENCE"

    move-object/from16 v17, v2

    const/16 v2, 0xd

    invoke-direct {v14, v15, v2, v0, v1}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v15, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v0, 0x263

    const-string v1, "The controlURL within the freshness element does not match the controlURL of the action actually invoked"

    const-string v2, "INVALID_CONTROL_URL"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v15, v2, v3, v0, v1}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const/16 v1, 0x264

    const-string v2, "The session key reference is to a non-existent session"

    const-string v3, "NO_SUCH_SESSION"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/teleal/cling/model/types/ErrorCode;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [Lorg/teleal/cling/model/types/ErrorCode;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->$VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/teleal/cling/model/types/ErrorCode;->code:I

    iput-object p4, p0, Lorg/teleal/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lorg/teleal/cling/model/types/ErrorCode;
    .locals 5

    invoke-static {}, Lorg/teleal/cling/model/types/ErrorCode;->values()[Lorg/teleal/cling/model/types/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/teleal/cling/model/types/ErrorCode;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ErrorCode;
    .locals 1

    const-class v0, Lorg/teleal/cling/model/types/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/teleal/cling/model/types/ErrorCode;

    return-object p0
.end method

.method public static values()[Lorg/teleal/cling/model/types/ErrorCode;
    .locals 1

    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->$VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {v0}, [Lorg/teleal/cling/model/types/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/types/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/model/types/ErrorCode;->code:I

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-object p0
.end method
