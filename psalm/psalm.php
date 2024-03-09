<?php

/**
 * Stub file for Psalm to recognize CodeIgniter framework functions and classes, including the global view function.
 */

// Remove the namespace declaration to declare the `view` function in the global namespace.
// Remove the namespace Psalm\Internal\Codebase;

/**
 * A stub for the global `view` function provided by CodeIgniter.
 *
 * @param string $view Name of the view file to load.
 * @param array $options Data to pass to the view.
 * @return string Rendered view content as a string.
 */
function view(string $view, array $options = []): string {
    // Mock implementation for Psalm's benefit.
    return '';
}
