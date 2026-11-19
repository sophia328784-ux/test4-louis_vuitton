.class Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/types/DescriptorKType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/types/DescriptorKType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->I(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/KClassifier;

    move-result-object p0

    return-object p0
.end method
