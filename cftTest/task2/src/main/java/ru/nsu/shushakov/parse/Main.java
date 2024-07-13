package ru.nsu.shushakov.parse;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {
    public static List<Integer> findTargetSumOfTwo(List<Integer> naturalList, int target) {
        Map<Integer, Integer> numToIndex = new HashMap<>();
        for (int i = 0; i < naturalList.size(); i++) {
            int complement = target - naturalList.get(i);
            if (numToIndex.containsKey(complement)) {
                return List.of(numToIndex.get(complement), i);
            }
            numToIndex.put(naturalList.get(i), i);
        }
        //но такого быть не может
        throw new IllegalArgumentException("no such two numbers");
    }

    public static void main(String[] args) {
        List<Integer> naturalList =  List.of(2, 7, 11, 15);
        int target = 9;
        List<Integer> result = findTargetSumOfTwo(naturalList, target);
        System.out.println(result.get(0) + " " + result.get(1));
    }
}
