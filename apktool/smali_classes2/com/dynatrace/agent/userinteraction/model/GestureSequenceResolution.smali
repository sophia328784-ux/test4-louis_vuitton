.class public final enum Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0003\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;",
        "",
        "EMIT_NATIVE_EVENT",
        "SKIP_NATIVE_EVENT",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

.field public static final enum EMIT_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

.field public static final enum SKIP_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    const-string v1, "EMIT_NATIVE_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->EMIT_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    new-instance v1, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    const-string v2, "SKIP_NATIVE_EVENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->SKIP_NATIVE_EVENT:Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    filled-new-array {v0, v1}, [Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;
    .locals 1

    const-class v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    return-object p0
.end method

.method public static values()[Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;
    .locals 1

    sget-object v0, Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;->$VALUES:[Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dynatrace/agent/userinteraction/model/GestureSequenceResolution;

    return-object v0
.end method
