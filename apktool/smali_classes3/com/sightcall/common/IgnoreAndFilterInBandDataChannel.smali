.class public final Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;",
        "",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "value",
        "getValue",
        "()Z",
        "setValue",
        "(Z)V",
        "value$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "common_release"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

.field private static final value$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    const-string v2, "value"

    const-string v3, "getValue()Z"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    invoke-direct {v0}, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;-><init>()V

    sput-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    sget-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/properties/Delegates;->a()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    sput-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->value$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Z
    .locals 3

    sget-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->value$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final setValue(Z)V
    .locals 2

    sget-object p0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->value$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lkotlin/properties/ReadWriteProperty;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    return-void
.end method
