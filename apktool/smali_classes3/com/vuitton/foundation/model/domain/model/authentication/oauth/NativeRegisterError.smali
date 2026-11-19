.class public final enum Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;",
        "",
        "",
        "errorCode",
        "Ljava/lang/String;",
        "a",
        "()Ljava/lang/String;",
        "INVALID_PASSWORD",
        "PHONE_NUMBER_TOO_SHORT",
        "PHONE_NUMBER_TOO_LONG",
        "PHONE_NUMBER_INVALID_COUNTRY",
        "PHONE_NUMBER_INVALID",
        "INVALID_PASSWORD_RULES",
        "INVALID_PASSWORD_CONTAINS_NAME",
        "INVALID_PASSWORD_CONTAINS_EMAIL",
        "INVALID_EMAIL",
        "USER_ALREADY_EXISTS",
        "BIRTHDATE_INCONSISTENT",
        "LEGAL_AGE_BLOCKED",
        "LEGAL_AGE_TO_BE_BLOCKED",
        "INVALID_PHONE",
        "INVALID_CALLING_CODE",
        "INVALID_TITLE",
        "INVALID_NAME",
        "EMAIL_AND_USERNAME_NOT_MATCH",
        "INVALID_OTP",
        "INVALID_POSTAL_CODE",
        "INVALID_STATE",
        "INVALID_CITY",
        "INVALID_ADDRESS",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum BIRTHDATE_INCONSISTENT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum EMAIL_AND_USERNAME_NOT_MATCH:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_ADDRESS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_CALLING_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_CITY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_OTP:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_PASSWORD_CONTAINS_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_PASSWORD_CONTAINS_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_PASSWORD_RULES:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_PHONE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_STATE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum INVALID_TITLE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum LEGAL_AGE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum LEGAL_AGE_TO_BE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum PHONE_NUMBER_INVALID:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum PHONE_NUMBER_INVALID_COUNTRY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum PHONE_NUMBER_TOO_LONG:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum PHONE_NUMBER_TOO_SHORT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

.field public static final enum USER_ALREADY_EXISTS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;


# instance fields
.field private final errorCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x0

    const-string v2, "register_invalid_password"

    const-string v3, "INVALID_PASSWORD"

    invoke-direct {v1, v3, v0, v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x1

    const-string v3, "register_phone_number_too_short"

    const-string v4, "PHONE_NUMBER_TOO_SHORT"

    invoke-direct {v2, v4, v0, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_TOO_SHORT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x2

    const-string v4, "register_phone_number_too_long"

    const-string v5, "PHONE_NUMBER_TOO_LONG"

    invoke-direct {v3, v5, v0, v4}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_TOO_LONG:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x3

    const-string v5, "register_phone_number_invalid_country"

    const-string v6, "PHONE_NUMBER_INVALID_COUNTRY"

    invoke-direct {v4, v6, v0, v5}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_INVALID_COUNTRY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x4

    const-string v6, "register_phone_number_not_a_number"

    const-string v7, "PHONE_NUMBER_INVALID"

    invoke-direct {v5, v7, v0, v6}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->PHONE_NUMBER_INVALID:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x5

    const-string v7, "register_invalid_new_password_too_short_or_not_contains_number_or_uppercase"

    const-string v8, "INVALID_PASSWORD_RULES"

    invoke-direct {v6, v8, v0, v7}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_RULES:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x6

    const-string v8, "register_invalid_new_password_too_easy_contains_name"

    const-string v9, "INVALID_PASSWORD_CONTAINS_NAME"

    invoke-direct {v7, v9, v0, v8}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_CONTAINS_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/4 v0, 0x7

    const-string v9, "register_invalid_new_password_too_easy_contains_email"

    const-string v10, "INVALID_PASSWORD_CONTAINS_EMAIL"

    invoke-direct {v8, v10, v0, v9}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PASSWORD_CONTAINS_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0x8

    const-string v10, "register_invalid_email_address"

    const-string v11, "INVALID_EMAIL"

    invoke-direct {v9, v11, v0, v10}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_EMAIL:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0x9

    const-string v11, "register_user_already_exist"

    const-string v12, "USER_ALREADY_EXISTS"

    invoke-direct {v10, v12, v0, v11}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->USER_ALREADY_EXISTS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0xa

    const-string v12, "register_birthdate_inconsistent"

    const-string v13, "BIRTHDATE_INCONSISTENT"

    invoke-direct {v11, v13, v0, v12}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->BIRTHDATE_INCONSISTENT:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0xb

    const-string v13, "register_legal_age_blocked"

    const-string v14, "LEGAL_AGE_BLOCKED"

    invoke-direct {v12, v14, v0, v13}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->LEGAL_AGE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0xc

    const-string v14, "register_legal_age_to_be_blocked"

    const-string v15, "LEGAL_AGE_TO_BE_BLOCKED"

    invoke-direct {v13, v15, v0, v14}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->LEGAL_AGE_TO_BE_BLOCKED:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0xd

    const-string v15, "register_invalid_phone"

    move-object/from16 v16, v1

    const-string v1, "INVALID_PHONE"

    invoke-direct {v14, v1, v0, v15}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_PHONE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v0, 0xe

    const-string v1, "register_invalid_calling_code"

    move-object/from16 v17, v2

    const-string v2, "INVALID_CALLING_CODE"

    invoke-direct {v15, v2, v0, v1}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_CALLING_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v1, 0xf

    const-string v2, "register_invalid_title"

    move-object/from16 v18, v3

    const-string v3, "INVALID_TITLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_TITLE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x10

    const-string v3, "register_invalid_name"

    move-object/from16 v19, v0

    const-string v0, "INVALID_NAME"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_NAME:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x11

    const-string v3, "register_email_and_username_do_not_match"

    move-object/from16 v20, v1

    const-string v1, "EMAIL_AND_USERNAME_NOT_MATCH"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->EMAIL_AND_USERNAME_NOT_MATCH:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x12

    const-string v3, "register_invalid_otp"

    move-object/from16 v21, v0

    const-string v0, "INVALID_OTP"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_OTP:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x13

    const-string v3, "register_invalid_postal_code"

    move-object/from16 v22, v1

    const-string v1, "INVALID_POSTAL_CODE"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_POSTAL_CODE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x14

    const-string v3, "register_invalid_state"

    move-object/from16 v23, v0

    const-string v0, "INVALID_STATE"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_STATE:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x15

    const-string v3, "register_invalid_city"

    move-object/from16 v24, v1

    const-string v1, "INVALID_CITY"

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_CITY:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    const/16 v2, 0x16

    const-string v3, "register_invalid_address"

    move-object/from16 v25, v0

    const-string v0, "INVALID_ADDRESS"

    invoke-direct {v1, v0, v2, v3}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->INVALID_ADDRESS:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    filled-new-array/range {v1 .. v23}, [Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;
    .locals 1

    const-class v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    return-object p0
.end method

.method public static values()[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->$VALUES:[Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterError;->errorCode:Ljava/lang/String;

    return-object p0
.end method
