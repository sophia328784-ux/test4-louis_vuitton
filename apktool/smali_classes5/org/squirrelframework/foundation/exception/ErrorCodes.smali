.class public final enum Lorg/squirrelframework/foundation/exception/ErrorCodes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/squirrelframework/foundation/exception/ErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum CANNOT_GET_FIELD_VALUE:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum CANNOT_SET_FIELD_VALUE:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum CLASS_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum CONSTRUCTOR_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum CONSTRUCT_NEW_INSTANCE_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum FIELD_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum FIELD_NULL:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum FSM_TRANSITION_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum ILLEGAL_CLASS_NAME:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum ILLEGAL_TYPE_CASTING:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum INTERNAL_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum INVOKE_PERSISTED_ENTITY_METHOD_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum METHOD_INVOKE_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum METHOD_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum METHOD_NULL:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum METHOD_UNEXPECTED_PARAMETERS:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum MISSING_ITEM_PROVIDER:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum NOT_ALLOW_ACCESS_FIELD:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum NOT_ALLOW_ACCESS_METHOD:Lorg/squirrelframework/foundation/exception/ErrorCodes;

.field public static final enum UNEXPECTED_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2710

    const-string v2, "couldn\'t initialize tree item provider, make sure it has been properly wired"

    const-string v3, "MISSING_ITEM_PROVIDER"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;->MISSING_ITEM_PROVIDER:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v2, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2711

    const-string v3, "couldn\'t cast the instance from %s to %s"

    const-string v4, "ILLEGAL_TYPE_CASTING"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v0, v3}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/squirrelframework/foundation/exception/ErrorCodes;->ILLEGAL_TYPE_CASTING:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v3, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2712

    const-string v4, "couldn\'t invoke method of PersistedEntity"

    const-string v5, "INVOKE_PERSISTED_ENTITY_METHOD_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v0, v4}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/squirrelframework/foundation/exception/ErrorCodes;->INVOKE_PERSISTED_ENTITY_METHOD_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v4, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2713

    const-string v5, "wasn\'t allowed to get field \'%s.%s\'"

    const-string v6, "NOT_ALLOW_ACCESS_FIELD"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v0, v5}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/squirrelframework/foundation/exception/ErrorCodes;->NOT_ALLOW_ACCESS_FIELD:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v5, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2714

    const-string v6, "couldn\'t find field \'%s.%s\'"

    const-string v7, "FIELD_NOT_FOUND"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v0, v6}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FIELD_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v6, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2715

    const-string v7, "wasn\'t allowed to get method \'%s.%s(%s)\'"

    const-string v8, "NOT_ALLOW_ACCESS_METHOD"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v0, v7}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/squirrelframework/foundation/exception/ErrorCodes;->NOT_ALLOW_ACCESS_METHOD:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v7, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2716

    const-string v8, "couldn\'t find method \'%s.%s(%s)\'"

    const-string v9, "METHOD_NOT_FOUND"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v0, v8}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/squirrelframework/foundation/exception/ErrorCodes;->METHOD_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v8, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2717

    const-string v9, "couldn\'t construct new \'%s\' with args %s"

    const-string v10, "CONSTRUCT_NEW_INSTANCE_ERROR"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v0, v9}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/squirrelframework/foundation/exception/ErrorCodes;->CONSTRUCT_NEW_INSTANCE_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v9, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2718

    const-string v10, "couldn\'t get \'%s\'"

    const-string v11, "CANNOT_GET_FIELD_VALUE"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v0, v10}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/squirrelframework/foundation/exception/ErrorCodes;->CANNOT_GET_FIELD_VALUE:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v10, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x2719

    const-string v11, "couldn\'t set \'%s\' to \'%s\'"

    const-string v12, "CANNOT_SET_FIELD_VALUE"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v0, v11}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/squirrelframework/foundation/exception/ErrorCodes;->CANNOT_SET_FIELD_VALUE:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v11, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x271a

    const-string v12, "method is null"

    const-string v13, "METHOD_NULL"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v0, v12}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/squirrelframework/foundation/exception/ErrorCodes;->METHOD_NULL:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v12, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x271b

    const-string v13, "field is null"

    const-string v14, "FIELD_NULL"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v0, v13}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FIELD_NULL:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v13, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x271c

    const-string v14, "couldn\'t invoke \'%s\' with %s on %s: %s"

    const-string v15, "METHOD_INVOKE_ERROR"

    move-object/from16 v16, v1

    const/16 v1, 0xc

    invoke-direct {v13, v15, v1, v0, v14}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/squirrelframework/foundation/exception/ErrorCodes;->METHOD_INVOKE_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v14, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x271d

    const-string v1, "couldn\'t find constructor of \'%s\' with parameter typs \'%s\'"

    const-string v15, "CONSTRUCTOR_NOT_FOUND"

    move-object/from16 v17, v2

    const/16 v2, 0xd

    invoke-direct {v14, v15, v2, v0, v1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lorg/squirrelframework/foundation/exception/ErrorCodes;->CONSTRUCTOR_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v15, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v0, 0x271e

    const-string v1, "illegal class name"

    const-string v2, "ILLEGAL_CLASS_NAME"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v15, v2, v3, v0, v1}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lorg/squirrelframework/foundation/exception/ErrorCodes;->ILLEGAL_CLASS_NAME:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v1, 0x271f

    const-string v2, "class \'%s\' not found"

    const-string v3, "CLASS_NOT_FOUND"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->CLASS_NOT_FOUND:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v2, 0x2720

    const-string v3, "Method requires unexpected parameters"

    const-string v4, "METHOD_UNEXPECTED_PARAMETERS"

    move-object/from16 v20, v0

    const/16 v0, 0x10

    invoke-direct {v1, v4, v0, v2, v3}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;->METHOD_UNEXPECTED_PARAMETERS:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v2, 0x2721

    const-string v3, "Transition from \'%s\' to \'%s\' on \'%s\' with context \'%s\' when invoking action \'%s\' caused exception \'%s\'"

    const-string v4, "FSM_TRANSITION_ERROR"

    move-object/from16 v21, v1

    const/16 v1, 0x11

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->FSM_TRANSITION_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v2, 0x4e1e

    const-string v3, "internal error"

    const-string v4, "INTERNAL_ERROR"

    move-object/from16 v22, v0

    const/16 v0, 0x12

    invoke-direct {v1, v4, v0, v2, v3}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/squirrelframework/foundation/exception/ErrorCodes;->INTERNAL_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    new-instance v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    const/16 v2, 0x4e1f

    const-string v3, "unexpected error. Please submit a issue"

    const-string v4, "UNEXPECTED_ERROR"

    move-object/from16 v23, v1

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/squirrelframework/foundation/exception/ErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->UNEXPECTED_ERROR:Lorg/squirrelframework/foundation/exception/ErrorCodes;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v0

    filled-new-array/range {v1 .. v20}, [Lorg/squirrelframework/foundation/exception/ErrorCodes;

    move-result-object v0

    sput-object v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->$VALUES:[Lorg/squirrelframework/foundation/exception/ErrorCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->code:I

    iput-object p4, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/squirrelframework/foundation/exception/ErrorCodes;
    .locals 1

    const-class v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;

    return-object p0
.end method

.method public static values()[Lorg/squirrelframework/foundation/exception/ErrorCodes;
    .locals 1

    sget-object v0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->$VALUES:[Lorg/squirrelframework/foundation/exception/ErrorCodes;

    invoke-virtual {v0}, [Lorg/squirrelframework/foundation/exception/ErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/squirrelframework/foundation/exception/ErrorCodes;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->code:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->description:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/squirrelframework/foundation/exception/ErrorCodes;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
