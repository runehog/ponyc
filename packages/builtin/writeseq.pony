interface WriteSeq[A]
  """
  The writeable interface of a sequence
  """
  fun ref update(i: USize, value: A): A^ ?
    """
    Replaces the i-th element of the sequence. Returns the previous value.
    Raises an error if the index is out of bounds.
    """

  fun ref clear(): Seq[A]^
    """
    Removes all elements from the sequence.
    """

  fun ref push(value: A): Seq[A]^
    """
    Adds an element to the end of the sequence.
    """

  fun ref pop(): A^ ?
    """
    Removes an element from the end of the sequence.
    """

  fun ref unshift(value: A): Seq[A]^
    """
    Adds an element to the beginning of the sequence.
    """

  fun ref shift(): A^ ?
    """
    Removes an element from the beginning of the sequence.
    """

  fun ref append(seq: (ReadSeq[A] & ReadElement[A^]), offset: USize = 0,
    len: USize = -1): Seq[A]^
    """
    Add len elements to the end of the list, starting from the given
    offset.
    """

  fun ref concat(iter: Iterator[A^], offset: USize = 0, len: USize = -1)
    : Seq[A]^
    """
    Add len iterated elements to the end of the list, starting from the given
    offset.
    """

  fun ref truncate(len: USize): Seq[A]^
    """
    Truncate the sequence to the given length, discarding excess elements.
    If the sequence is already smaller than len, do nothing.
    """


