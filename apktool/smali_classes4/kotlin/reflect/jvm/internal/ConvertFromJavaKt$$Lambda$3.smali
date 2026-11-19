.class Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;->b:Lkotlin/reflect/jvm/internal/ConvertFromJavaKt$$Lambda$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
