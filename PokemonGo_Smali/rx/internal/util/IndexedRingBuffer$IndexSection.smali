.class Lrx/internal/util/IndexedRingBuffer$IndexSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexSection"
.end annotation


# instance fields
.field private final _next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/IndexedRingBuffer$IndexSection;",
            ">;"
        }
    .end annotation
.end field

.field private final unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 523
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    .line 513
    return-void
.end method


# virtual methods
.method public getAndSet(II)I
    .registers 4
    .param p1, "expected"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result v0

    return v0
.end method

.method getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 4

    .prologue
    .line 526
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 527
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 535
    :goto_10
    return-object v1

    .line 529
    :cond_11
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    .line 530
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v1, v0

    .line 532
    goto :goto_10

    .line 535
    :cond_21
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    goto :goto_10
.end method

.method public set(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "elementIndex"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 521
    return-void
.end method
