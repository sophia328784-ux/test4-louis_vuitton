.class Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->g:[Lkotlin/reflect/KProperty;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
