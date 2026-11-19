.class public final enum LArchitecture;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LArchitecture$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LArchitecture;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u00082\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0008R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "LArchitecture;",
        "Lcom/squareup/wire/WireEnum;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "Companion",
        "ARM32",
        "ARM64",
        "X86",
        "X86_64",
        "RISCV64",
        "NONE",
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

.field private static final synthetic $VALUES:[LArchitecture;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "LArchitecture;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ARM32:LArchitecture;

.field public static final enum ARM64:LArchitecture;

.field public static final Companion:LArchitecture$Companion;

.field public static final enum NONE:LArchitecture;

.field public static final enum RISCV64:LArchitecture;

.field public static final enum X86:LArchitecture;

.field public static final enum X86_64:LArchitecture;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LArchitecture;

    const-string v1, "ARM32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, LArchitecture;->ARM32:LArchitecture;

    new-instance v1, LArchitecture;

    const-string v2, "ARM64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v1, LArchitecture;->ARM64:LArchitecture;

    new-instance v2, LArchitecture;

    const-string v3, "X86"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v2, LArchitecture;->X86:LArchitecture;

    new-instance v3, LArchitecture;

    const-string v4, "X86_64"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v3, LArchitecture;->X86_64:LArchitecture;

    new-instance v4, LArchitecture;

    const-string v5, "RISCV64"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v4, LArchitecture;->RISCV64:LArchitecture;

    new-instance v5, LArchitecture;

    const-string v6, "NONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LArchitecture;-><init>(Ljava/lang/String;II)V

    sput-object v5, LArchitecture;->NONE:LArchitecture;

    filled-new-array/range {v0 .. v5}, [LArchitecture;

    move-result-object v1

    sput-object v1, LArchitecture;->$VALUES:[LArchitecture;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, LArchitecture;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, LArchitecture$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LArchitecture$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, LArchitecture;->Companion:LArchitecture$Companion;

    const-class v1, LArchitecture;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    new-instance v3, LArchitecture$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    sput-object v3, LArchitecture;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LArchitecture;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LArchitecture;
    .locals 1

    const-class v0, LArchitecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LArchitecture;

    return-object p0
.end method

.method public static values()[LArchitecture;
    .locals 1

    sget-object v0, LArchitecture;->$VALUES:[LArchitecture;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LArchitecture;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, LArchitecture;->value:I

    return p0
.end method
