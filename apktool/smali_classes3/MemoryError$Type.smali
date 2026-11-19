.class public final enum LMemoryError$Type;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMemoryError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMemoryError$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LMemoryError$Type;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u00082\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0008R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "LMemoryError$Type;",
        "Lcom/squareup/wire/WireEnum;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "Companion",
        "UNKNOWN",
        "USE_AFTER_FREE",
        "DOUBLE_FREE",
        "INVALID_FREE",
        "BUFFER_OVERFLOW",
        "BUFFER_UNDERFLOW",
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

.field private static final synthetic $VALUES:[LMemoryError$Type;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "LMemoryError$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum BUFFER_OVERFLOW:LMemoryError$Type;

.field public static final enum BUFFER_UNDERFLOW:LMemoryError$Type;

.field public static final Companion:LMemoryError$Type$Companion;

.field public static final enum DOUBLE_FREE:LMemoryError$Type;

.field public static final enum INVALID_FREE:LMemoryError$Type;

.field public static final enum UNKNOWN:LMemoryError$Type;

.field public static final enum USE_AFTER_FREE:LMemoryError$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LMemoryError$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, LMemoryError$Type;->UNKNOWN:LMemoryError$Type;

    new-instance v1, LMemoryError$Type;

    const-string v2, "USE_AFTER_FREE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, LMemoryError$Type;->USE_AFTER_FREE:LMemoryError$Type;

    new-instance v2, LMemoryError$Type;

    const-string v3, "DOUBLE_FREE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, LMemoryError$Type;->DOUBLE_FREE:LMemoryError$Type;

    new-instance v3, LMemoryError$Type;

    const-string v4, "INVALID_FREE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, LMemoryError$Type;->INVALID_FREE:LMemoryError$Type;

    new-instance v4, LMemoryError$Type;

    const-string v5, "BUFFER_OVERFLOW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v4, LMemoryError$Type;->BUFFER_OVERFLOW:LMemoryError$Type;

    new-instance v5, LMemoryError$Type;

    const-string v6, "BUFFER_UNDERFLOW"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LMemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, LMemoryError$Type;->BUFFER_UNDERFLOW:LMemoryError$Type;

    filled-new-array/range {v0 .. v5}, [LMemoryError$Type;

    move-result-object v1

    sput-object v1, LMemoryError$Type;->$VALUES:[LMemoryError$Type;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, LMemoryError$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, LMemoryError$Type$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LMemoryError$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, LMemoryError$Type;->Companion:LMemoryError$Type$Companion;

    const-class v1, LMemoryError$Type;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    new-instance v3, LMemoryError$Type$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    sput-object v3, LMemoryError$Type;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LMemoryError$Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LMemoryError$Type;
    .locals 1

    const-class v0, LMemoryError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LMemoryError$Type;

    return-object p0
.end method

.method public static values()[LMemoryError$Type;
    .locals 1

    sget-object v0, LMemoryError$Type;->$VALUES:[LMemoryError$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMemoryError$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, LMemoryError$Type;->value:I

    return p0
.end method
