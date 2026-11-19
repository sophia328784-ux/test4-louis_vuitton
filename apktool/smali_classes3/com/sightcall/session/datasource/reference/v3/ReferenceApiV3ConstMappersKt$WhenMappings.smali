.class public final synthetic Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->values()[Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Acd:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Code:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/CallDistribution;->Direct:Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/UserRole;->values()[Lcom/sightcall/session/datasource/reference/v3/UserRole;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/UserRole;->Guest:Lcom/sightcall/session/datasource/reference/v3/UserRole;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/UserRole;->Attendee:Lcom/sightcall/session/datasource/reference/v3/UserRole;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/Role;->values()[Lcom/sightcall/session/datasource/reference/v3/Role;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/Role;->EraseDrawing:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/Role;->HangupCall:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/sightcall/session/datasource/reference/v3/Role;->OpenChat:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->PauseCamera:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->ShareMedia:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v0, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->StartCamera:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v0, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->StartMicro:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v0, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->StartScreencast:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v0, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->StartTorch:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v0, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->SwitchCamera:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v0, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/Role;->SwitchSpeaker:Lcom/sightcall/session/datasource/reference/v3/Role;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v0, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;->values()[Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_10
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;->Front:Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;->Rear:Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;->values()[Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_12
    sget-object v3, Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;->Sd:Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;->Md:Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sput-object v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt$WhenMappings;->$EnumSwitchMapping$4:[I

    return-void
.end method
