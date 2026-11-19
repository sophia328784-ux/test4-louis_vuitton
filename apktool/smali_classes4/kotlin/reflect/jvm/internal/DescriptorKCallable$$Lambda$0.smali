.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
